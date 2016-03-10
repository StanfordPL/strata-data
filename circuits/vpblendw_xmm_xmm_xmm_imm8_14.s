  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode              
.target:                             #        0     0      OPC=<label>         
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label     
  callq .move_032_064_r10d_r11d_rbx  #  2     0x5   5      OPC=callq_label     
  cmpw %r10w, %r10w                  #  3     0xa   4      OPC=cmpw_r16_r16    
  vmovq %xmm3, %r10                  #  4     0xe   5      OPC=vmovq_r64_xmm   
  vzeroall                           #  5     0x13  3      OPC=vzeroall        
  cmovpw %bx, %r10w                  #  6     0x16  5      OPC=cmovpw_r16_r16  
  callq .move_064_128_r10_r11_xmm1   #  7     0x1b  5      OPC=callq_label     
  retq                               #  8     0x20  1      OPC=retq            
                                                                               
.size target, .-target
