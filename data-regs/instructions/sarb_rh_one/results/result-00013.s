  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %ah, %ecx  #  1     0    3      OPC=movsbl_r32_rh  
  sarw $0x1, %cx    #  2     0x3  3      OPC=sarw_r16_one   
  xchgb %ah, %cl    #  3     0x6  2      OPC=xchgb_r8_rh    
  retq              #  4     0x8  1      OPC=retq           
                                                            
.size target, .-target
