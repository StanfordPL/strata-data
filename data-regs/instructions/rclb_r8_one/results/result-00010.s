  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  setae %dl         #  1     0    3      OPC=setae_r8       
  movzbl %dl, %ecx  #  2     0x3  3      OPC=movzbl_r32_r8  
  decw %cx          #  3     0x6  3      OPC=decw_r16       
  rclw $0x1, %cx    #  4     0x9  3      OPC=rclw_r16_one   
  adcb %bl, %bl     #  5     0xc  2      OPC=adcb_r8_r8     
  retq              #  6     0xe  1      OPC=retq           
                                                            
.size target, .-target
