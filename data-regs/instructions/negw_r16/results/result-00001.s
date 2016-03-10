  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                   #  Line  RIP   Bytes  Opcode              
.target:                 #        0     0      OPC=<label>         
  movswl %bx, %esi       #  1     0     3      OPC=movswl_r32_r16  
  decw %bx               #  2     0x3   3      OPC=decw_r16        
  notw %bx               #  3     0x6   3      OPC=notw_r16        
  addw %bx, %si          #  4     0x9   3      OPC=addw_r16_r16    
  callq .set_szp_for_bx  #  5     0xc   5      OPC=callq_label     
  retq                   #  6     0x11  1      OPC=retq            
                                                                   
.size target, .-target
