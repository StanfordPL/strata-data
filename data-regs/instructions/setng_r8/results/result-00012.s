  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setle %ah                #  1     0    3      OPC=setle_rh     
  callq .read_zf_into_rbx  #  2     0x3  5      OPC=callq_label  
  xchgb %bl, %ah           #  3     0x8  2      OPC=xchgb_rh_r8  
  retq                     #  4     0xa  1      OPC=retq         
                                                                 
.size target, .-target
