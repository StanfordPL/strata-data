  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_cf_into_rcx  #  1     0    5      OPC=callq_label  
  shlb $0x1, %cl           #  2     0x5  2      OPC=shlb_r8_one  
  callq .read_zf_into_rbx  #  3     0x7  5      OPC=callq_label  
  movb %bl, %ah            #  4     0xc  2      OPC=movb_rh_r8   
  retq                     #  5     0xe  1      OPC=retq         
                                                                 
.size target, .-target
