  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode           
.target:                   #        0    0      OPC=<label>      
  callq .read_sf_into_rbx  #  1     0    5      OPC=callq_label  
  addb %bl, %bh            #  2     0x5  2      OPC=addb_rh_r8   
  orq %rbx, %rbx           #  3     0x7  3      OPC=orq_r64_r64  
  setz %ah                 #  4     0xa  3      OPC=setz_rh      
  retq                     #  5     0xd  1      OPC=retq         
                                                                 
.size target, .-target
