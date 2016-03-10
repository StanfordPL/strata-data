  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vbroadcastss %xmm2, %xmm1          #  1     0     5      OPC=vbroadcastss_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13   #  2     0x5   5      OPC=callq_label           
  callq .move_032_064_r12d_r13d_rbx  #  3     0xa   5      OPC=callq_label           
  movq %rbx, %xmm6                   #  4     0xf   5      OPC=movq_xmm_r64          
  vmovsd %xmm6, %xmm1, %xmm1         #  5     0x14  4      OPC=vmovsd_xmm_xmm_xmm    
  retq                               #  6     0x18  1      OPC=retq                  
                                                                                     
.size target, .-target
