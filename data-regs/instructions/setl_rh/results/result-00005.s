  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label  
  callq .read_sf_into_rcx  #  2     0x5   5      OPC=callq_label  
  xchgb %bh, %bl           #  3     0xa   2      OPC=xchgb_r8_rh  
  xorb %cl, %bh            #  4     0xc   2      OPC=xorb_rh_r8   
  setnz %ah                #  5     0xe   3      OPC=setnz_rh     
  retq                     #  6     0x11  1      OPC=retq         
                                                                  
.size target, .-target
