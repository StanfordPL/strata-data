  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  movsbq %bl, %rax  #  1     0    4      OPC=movsbq_r64_r8    
  shlb $0x1, %bl    #  2     0x4  2      OPC=shlb_r8_one      
  sarw $0x1, %ax    #  3     0x6  3      OPC=sarw_r16_one     
  cmovnow %ax, %bx  #  4     0x9  4      OPC=cmovnow_r16_r16  
  retq              #  5     0xd  1      OPC=retq             
                                                              
.size target, .-target
