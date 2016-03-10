  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                     #  Line  RIP   Bytes  Opcode           
.target:                   #        0     0      OPC=<label>      
  xorb %bpl, %bpl          #  1     0     3      OPC=xorb_r8_r8   
  callq .read_sf_into_rcx  #  2     0x3   5      OPC=callq_label  
  setnb %ch                #  3     0x8   3      OPC=setnb_rh     
  decq %rcx                #  4     0xb   3      OPC=decq_r64     
  xaddb %cl, %ah           #  5     0xe   3      OPC=xaddb_rh_r8  
  retq                     #  6     0x11  1      OPC=retq         
                                                                  
.size target, .-target
