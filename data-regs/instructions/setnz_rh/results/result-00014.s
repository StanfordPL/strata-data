  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label      
  popcntq %rcx, %r11       #  2     0x5   5      OPC=popcntq_r64_r64  
  callq .read_zf_into_rbx  #  3     0xa   5      OPC=callq_label      
  callq .set_szp_for_bl    #  4     0xf   5      OPC=callq_label      
  setnp %ah                #  5     0x14  3      OPC=setnp_rh         
  retq                     #  6     0x17  1      OPC=retq             
                                                                      
.size target, .-target
