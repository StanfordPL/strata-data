  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode               
.target:                          #        0    0      OPC=<label>          
  vmovupd %xmm1, %xmm3            #  1     0    4      OPC=vmovupd_xmm_xmm  
  callq .move_128_064_xmm3_r8_r9  #  2     0x4  5      OPC=callq_label      
  movq %r9, %rbx                  #  3     0x9  3      OPC=movq_r64_r64     
  retq                            #  4     0xc  1      OPC=retq             
                                                                            
.size target, .-target
