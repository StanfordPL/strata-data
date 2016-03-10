  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .clear_sf                   #  1     0     5      OPC=callq_label    
  callq .move_128_064_xmm1_r12_r13  #  2     0x5   5      OPC=callq_label    
  callq .read_sf_into_rbx           #  3     0xa   5      OPC=callq_label    
  xaddw %r13w, %bx                  #  4     0xf   5      OPC=xaddw_r16_r16  
  retq                              #  5     0x14  1      OPC=retq           
                                                                             
.size target, .-target
