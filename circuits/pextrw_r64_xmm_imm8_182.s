  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  xorl %ebx, %ebx                               #  1     0     2      OPC=xorl_r32_r32           
  vunpckhps %xmm1, %xmm1, %xmm3                 #  2     0x2   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_128_032_xmm3_r10d_r11d_r12d_r13d  #  3     0x6   5      OPC=callq_label            
  xaddw %bx, %r13w                              #  4     0xb   5      OPC=xaddw_r16_r16          
  retq                                          #  5     0x10  1      OPC=retq                   
                                                                                                 
.size target, .-target
