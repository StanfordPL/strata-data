  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                               #  Line  RIP   Bytes  Opcode            
.target:                             #        0     0      OPC=<label>       
  callq .read_cf_into_rcx            #  1     0     5      OPC=callq_label   
  setnbe %cl                         #  2     0x5   3      OPC=setnbe_r8     
  callq .move_064_032_rcx_r10d_r11d  #  3     0x8   5      OPC=callq_label   
  xorw %cx, %r11w                    #  4     0xd   4      OPC=xorw_r16_r16  
  setpo %ah                          #  5     0x11  3      OPC=setpo_rh      
  retq                               #  6     0x14  1      OPC=retq          
                                                                             
.size target, .-target
