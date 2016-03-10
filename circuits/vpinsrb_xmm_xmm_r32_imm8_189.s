  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode               
.target:                              #        0    0      OPC=<label>          
  vmovupd %xmm2, %xmm1                #  1     0    4      OPC=vmovupd_xmm_xmm  
  movslq %ebx, %r8                    #  2     0x4  3      OPC=movslq_r64_r32   
  callq .move_r8b_to_byte_13_of_ymm1  #  3     0x7  5      OPC=callq_label      
  retq                                #  4     0xc  1      OPC=retq             
                                                                                
.size target, .-target
