  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_064_xmm2_r10_r11   #  1     0     5      OPC=callq_label         
  callq .move_032_064_r10d_r11d_rdx  #  2     0x5   5      OPC=callq_label         
  movq %rdx, %xmm1                   #  3     0xa   5      OPC=movq_xmm_r64        
  movdqa %xmm3, %xmm8                #  4     0xf   5      OPC=movdqa_xmm_xmm      
  vmovsd %xmm1, %xmm8, %xmm1         #  5     0x14  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                               #  6     0x18  1      OPC=retq                
                                                                                   
.size target, .-target
