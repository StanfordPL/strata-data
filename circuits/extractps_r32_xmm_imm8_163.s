  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                  
.target:                                        #        0     0      OPC=<label>             
  vrcpss %xmm1, %xmm1, %xmm1                    #  1     0     4      OPC=vrcpss_xmm_xmm_xmm  
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  2     0x4   5      OPC=callq_label         
  movq $0x3, %rbx                               #  3     0x9   10     OPC=movq_r64_imm64      
  sall $0x1, %ebx                               #  4     0x13  2      OPC=sall_r32_one        
  cmovnsl %r13d, %ebx                           #  5     0x15  4      OPC=cmovnsl_r32_r32     
  retq                                          #  6     0x19  1      OPC=retq                
                                                                                              
.size target, .-target
