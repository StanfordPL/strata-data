  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  callq .read_sf_into_rbx  #  1     0     5      OPC=callq_label   
  xorq %r13, %r13          #  2     0x5   3      OPC=xorq_r64_r64  
  callq .set_szp_for_ebx   #  3     0x8   5      OPC=callq_label   
  setbe %bl                #  4     0xd   3      OPC=setbe_r8      
  retq                     #  5     0x10  1      OPC=retq          
                                                                   
.size target, .-target
