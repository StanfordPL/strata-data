  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rbx  #  1     0     5      OPC=callq_label      
  callq .read_cf_into_rcx  #  2     0x5   5      OPC=callq_label      
  addb %bl, %ch            #  3     0xa   2      OPC=addb_rh_r8       
  popcntw %cx, %bp         #  4     0xc   5      OPC=popcntw_r16_r16  
  setbe %ah                #  5     0x11  3      OPC=setbe_rh         
  retq                     #  6     0x14  1      OPC=retq             
                                                                      
.size target, .-target
