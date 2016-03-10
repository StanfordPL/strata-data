  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  callq .read_zf_into_rcx            #  1     0     5      OPC=callq_label      
  setnge %ch                         #  2     0x5   3      OPC=setnge_rh        
  callq .move_064_032_rcx_r10d_r11d  #  3     0x8   5      OPC=callq_label      
  popcntw %r10w, %bx                 #  4     0xd   6      OPC=popcntw_r16_r16  
  setne %ah                          #  5     0x13  3      OPC=setne_rh         
  retq                               #  6     0x16  1      OPC=retq             
                                                                                
.size target, .-target
