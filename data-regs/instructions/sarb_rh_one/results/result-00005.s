  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8     
  movsbl %ah, %ecx  #  2     0x2  3      OPC=movsbl_r32_rh  
  sarw $0x1, %ax    #  3     0x5  3      OPC=sarw_r16_one   
  sarw $0x1, %cx    #  4     0x8  3      OPC=sarw_r16_one   
  retq              #  5     0xb  1      OPC=retq           
                                                            
.size target, .-target
