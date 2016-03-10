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
  setng %bl                #  3     0xa   3      OPC=setng_r8        
  xaddb %ch, %bl           #  4     0xd   3      OPC=xaddb_r8_rh     
  cmoveq %rbx, %rbx        #  5     0x10  4      OPC=cmoveq_r64_r64  
  retq                     #  6     0x14  1      OPC=retq            
                                                                     
.size target, .-target
