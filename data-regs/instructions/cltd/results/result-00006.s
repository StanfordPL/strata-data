  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  rolb $0x1, %al    #  1     0    2      OPC=rolb_r8_one    
  xaddl %eax, %eax  #  2     0x2  3      OPC=xaddl_r32_r32  
  sbbw %ax, %ax     #  3     0x5  3      OPC=sbbw_r16_r16   
  movsbl %ah, %edx  #  4     0x8  3      OPC=movsbl_r32_rh  
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
