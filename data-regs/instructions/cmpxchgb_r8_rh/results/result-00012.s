  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  setbe %ah           #  1     0     3      OPC=setbe_rh         
  callq .clear_sf     #  2     0x3   5      OPC=callq_label      
  movsbw %bh, %di     #  3     0x8   4      OPC=movsbw_r16_rh    
  cmovnsw %ax, %ax    #  4     0xc   4      OPC=cmovnsw_r16_r16  
  cmpxchgb %dil, %cl  #  5     0x10  3      OPC=cmpxchgb_r8_r8   
  retq                #  6     0x13  1      OPC=retq             
                                                                 
.size target, .-target
