  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_pf_into_rcx  #  1     0    5      OPC=callq_label  
  negw %cx                 #  2     0x5  3      OPC=negw_r16     
  callq .read_sf_into_rbx  #  3     0x8  5      OPC=callq_label  
  movb %bl, %bl            #  4     0xd  2      OPC=movb_r8_r8   
  retq                     #  5     0xf  1      OPC=retq         
                                                                 
.size target, .-target
