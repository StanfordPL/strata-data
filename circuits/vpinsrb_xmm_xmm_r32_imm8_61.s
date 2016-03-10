  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  vmovupd %xmm2, %xmm1                #  1     0    4      OPC=vmovupd_xmm_xmm  
  movzbq %bl, %r9                     #  2     0x4  4      OPC=movzbq_r64_r8    
  callq .move_r9b_to_byte_13_of_ymm1  #  3     0x8  5      OPC=callq_label      
  retq                                #  4     0xd  1      OPC=retq             
                                                                                
.size target, .-target
