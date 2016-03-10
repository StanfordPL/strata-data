  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode              
.target:                                          #        0     0      OPC=<label>         
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label     
  xorl %ebx, %ebx                                 #  2     0x5   2      OPC=xorl_r32_r32    
  andpd %xmm10, %xmm10                            #  3     0x7   5      OPC=andpd_xmm_xmm   
  movd %xmm10, %r15d                              #  4     0xc   5      OPC=movd_r32_xmm    
  movzwq %r15w, %r15                              #  5     0x11  4      OPC=movzwq_r64_r16  
  xaddw %bx, %r15w                                #  6     0x15  5      OPC=xaddw_r16_r16   
  retq                                            #  7     0x1a  1      OPC=retq            
                                                                                            
.size target, .-target
