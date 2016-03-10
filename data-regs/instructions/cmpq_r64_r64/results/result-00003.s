  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                            #  Line  RIP  Bytes  Opcode             
.target:                          #        0    0      OPC=<label>        
  vmovq %rbx, %xmm3               #  1     0    5      OPC=vmovq_xmm_r64  
  callq .move_128_064_xmm3_r8_r9  #  2     0x5  5      OPC=callq_label    
  subq %rcx, %r8                  #  3     0xa  3      OPC=subq_r64_r64   
  retq                            #  4     0xd  1      OPC=retq           
                                                                          
.size target, .-target
