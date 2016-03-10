  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_sf_into_rcx  #  1     0     5      OPC=callq_label    
  movzbl %cl, %r14d        #  2     0x5   4      OPC=movzbl_r32_r8  
  xaddb %r14b, %cl         #  3     0x9   4      OPC=xaddb_r8_r8    
  setz %ah                 #  4     0xd   3      OPC=setz_rh        
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
