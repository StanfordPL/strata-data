  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                  
.target:                                    #        0     0      OPC=<label>             
  movq $0x40, %rbx                          #  1     0     10     OPC=movq_r64_imm64      
  vrcpss %xmm1, %xmm1, %xmm2                #  2     0xa   4      OPC=vrcpss_xmm_xmm_xmm  
  callq .move_128_032_xmm2_eax_edx_r8d_r9d  #  3     0xe   5      OPC=callq_label         
  xchgl %ebx, %r9d                          #  4     0x13  3      OPC=xchgl_r32_r32       
  retq                                      #  5     0x16  1      OPC=retq                
                                                                                          
.size target, .-target
