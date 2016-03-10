  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  callq .move_128_064_xmm2_r10_r11  #  1     0     5      OPC=callq_label      
  vzeroall                          #  2     0x5   3      OPC=vzeroall         
  movq %xmm10, %rax                 #  3     0x8   5      OPC=movq_r64_xmm     
  xorb %ah, %ah                     #  4     0xd   2      OPC=xorb_rh_rh       
  cmovnsw %ax, %r10w                #  5     0xf   5      OPC=cmovnsw_r16_r16  
  callq .move_064_128_r10_r11_xmm1  #  6     0x14  5      OPC=callq_label      
  movss %xmm13, %xmm1               #  7     0x19  5      OPC=movss_xmm_xmm    
  retq                              #  8     0x1e  1      OPC=retq             
                                                                               
.size target, .-target
