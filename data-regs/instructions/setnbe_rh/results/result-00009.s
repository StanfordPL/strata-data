  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_zf_into_rcx  #  1     0     5      OPC=callq_label    
  movzbl %cl, %edx         #  2     0x5   3      OPC=movzbl_r32_r8  
  setbe %dh                #  3     0x8   3      OPC=setbe_rh       
  decw %dx                 #  4     0xb   3      OPC=decw_r16       
  setl %ah                 #  5     0xe   3      OPC=setl_rh        
  retq                     #  6     0x11  1      OPC=retq           
                                                                    
.size target, .-target
