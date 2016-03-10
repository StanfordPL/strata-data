  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                      #  Line  RIP   Bytes  Opcode                 
.target:                                    #        0     0      OPC=<label>            
  vpxor %xmm15, %xmm15, %xmm7               #  1     0     5      OPC=vpxor_xmm_xmm_xmm  
  movq $0x0, %rbx                           #  2     0x5   10     OPC=movq_r64_imm64     
  unpckhpd %xmm7, %xmm1                     #  3     0xf   4      OPC=unpckhpd_xmm_xmm   
  callq .move_128_032_xmm1_eax_edx_r8d_r9d  #  4     0x13  5      OPC=callq_label        
  sall $0x1, %r8d                           #  5     0x18  3      OPC=sall_r32_one       
  cmovnow %dx, %bx                          #  6     0x1b  4      OPC=cmovnow_r16_r16    
  retq                                      #  7     0x1f  1      OPC=retq               
                                                                                         
.size target, .-target
