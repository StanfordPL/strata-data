  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP  Bytes  Opcode               
.target:              #        0    0      OPC=<label>          
  movsbl %ah, %ecx    #  1     0    3      OPC=movsbl_r32_rh    
  sarw $0x1, %cx      #  2     0x3  3      OPC=sarw_r16_one     
  movb %cl, %ch       #  3     0x6  2      OPC=movb_rh_r8       
  cmovnol %ecx, %eax  #  4     0x8  3      OPC=cmovnol_r32_r32  
  retq                #  5     0xb  1      OPC=retq             
                                                                
.size target, .-target
