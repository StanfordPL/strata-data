  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  setnge %ah       #  1     0     3      OPC=setnge_rh      
  xorw %dx, %dx    #  2     0x3   3      OPC=xorw_r16_r16   
  shlw $0x1, %dx   #  3     0x6   3      OPC=shlw_r16_one   
  rolb $0x1, %dh   #  4     0x9   2      OPC=rolb_rh_one    
  movsbw %ah, %si  #  5     0xb   4      OPC=movsbw_r16_rh  
  addw %dx, %si    #  6     0xf   3      OPC=addw_r16_r16   
  setbe %ah        #  7     0x12  3      OPC=setbe_rh       
  retq             #  8     0x15  1      OPC=retq           
                                                            
.size target, .-target
