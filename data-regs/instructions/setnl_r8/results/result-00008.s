  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  setge %dl                #  1     0    3      OPC=setge_r8     
  callq .write_dl_to_sf    #  2     0x3  5      OPC=callq_label  
  callq .read_sf_into_rbx  #  3     0x8  5      OPC=callq_label  
  retq                     #  4     0xd  1      OPC=retq         
                                                                 
.size target, .-target
