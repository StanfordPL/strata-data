  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  movb %cl, %bh            #  2     0x5  2      OPC=movb_rh_r8   
  salb $0x1, %bh           #  3     0x7  2      OPC=salb_rh_one  
  shlb $0x1, %bh           #  4     0x9  2      OPC=shlb_rh_one  
  sete %bl                 #  5     0xb  3      OPC=sete_r8      
  retq                     #  6     0xe  1      OPC=retq         
                                                                 
.size target, .-target
