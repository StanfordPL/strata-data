  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  setng %ah                #  1     0     3      OPC=setng_rh     
  callq .set_cf            #  2     0x3   5      OPC=callq_label  
  callq .read_cf_into_rbx  #  3     0x8   5      OPC=callq_label  
  xorb %bh, %ah            #  4     0xd   2      OPC=xorb_rh_rh   
  setz %ah                 #  5     0xf   3      OPC=setz_rh      
  retq                     #  6     0x12  1      OPC=retq         
                                                                  
.size target, .-target
