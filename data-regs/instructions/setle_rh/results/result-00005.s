  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  callq .read_of_into_rbx  #  1     0     5      OPC=callq_label      
  callq .read_zf_into_rcx  #  2     0x5   5      OPC=callq_label      
  setnge %ch               #  3     0xa   3      OPC=setnge_rh        
  xaddb %ch, %cl           #  4     0xd   3      OPC=xaddb_r8_rh      
  popcntw %bx, %ax         #  5     0x10  5      OPC=popcntw_r16_r16  
  xorb %ah, %cl            #  6     0x15  2      OPC=xorb_r8_rh       
  setne %ah                #  7     0x17  3      OPC=setne_rh         
  retq                     #  8     0x1a  1      OPC=retq             
                                                                      
.size target, .-target
