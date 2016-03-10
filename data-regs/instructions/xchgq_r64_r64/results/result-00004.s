  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                  #  Line  RIP   Bytes  Opcode             
.target:                                #        0     0      OPC=<label>        
  vmovq %rcx, %xmm1                     #  1     0     5      OPC=vmovq_xmm_r64  
  movq %rbx, %rcx                       #  2     0x5   3      OPC=movq_r64_r64   
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label    
  vmovq %xmm10, %rbx                    #  4     0xd   5      OPC=vmovq_r64_xmm  
  retq                                  #  5     0x12  1      OPC=retq           
                                                                                 
.size target, .-target
