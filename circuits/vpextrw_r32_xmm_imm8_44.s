  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                
.target:                                          #        0     0      OPC=<label>           
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label       
  movmskpd %xmm10, %rbx                           #  2     0x5   5      OPC=movmskpd_r64_xmm  
  movd %xmm10, %ebp                               #  3     0xa   5      OPC=movd_r32_xmm      
  decb %bh                                        #  4     0xf   2      OPC=decb_rh           
  cmovsw %bp, %bx                                 #  5     0x11  4      OPC=cmovsw_r16_r16    
  retq                                            #  6     0x15  1      OPC=retq              
                                                                                              
.size target, .-target
