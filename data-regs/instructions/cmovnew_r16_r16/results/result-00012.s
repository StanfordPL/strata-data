  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP  Bytes  Opcode               
.target:                   #        0    0      OPC=<label>          
  cmovnzw %cx, %bx         #  1     0    4      OPC=cmovnzw_r16_r16  
  shlw $0x1, %cx           #  2     0x4  3      OPC=shlw_r16_one     
  callq .read_cf_into_rcx  #  3     0x7  5      OPC=callq_label      
  xorb %ch, %bl            #  4     0xc  2      OPC=xorb_r8_rh       
  retq                     #  5     0xe  1      OPC=retq             
                                                                     
.size target, .-target
