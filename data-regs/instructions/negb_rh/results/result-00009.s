  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP   Bytes  Opcode             
.target:           #        0     0      OPC=<label>        
  xorb %al, %al    #  1     0     2      OPC=xorb_r8_r8     
  movzbw %ah, %cx  #  2     0x2   4      OPC=movzbw_r16_rh  
  rclb $0x1, %ch   #  3     0x6   2      OPC=rclb_rh_one    
  negw %ax         #  4     0x8   3      OPC=negw_r16       
  xorw %cx, %ax    #  5     0xb   3      OPC=xorw_r16_r16   
  negb %cl         #  6     0xe   2      OPC=negb_r8        
  retq             #  7     0x10  1      OPC=retq           
                                                            
.size target, .-target
