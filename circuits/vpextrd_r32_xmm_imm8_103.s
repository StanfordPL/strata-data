  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                
.target:                             #        0     0      OPC=<label>           
  unpckhps %xmm1, %xmm1              #  1     0     3      OPC=unpckhps_xmm_xmm  
  callq .move_128_64_xmm1_xmm8_xmm9  #  2     0x3   5      OPC=callq_label       
  callq .move_128_064_xmm1_r12_r13   #  3     0x8   5      OPC=callq_label       
  movupd %xmm9, %xmm5                #  4     0xd   5      OPC=movupd_xmm_xmm    
  pxor %xmm8, %xmm5                  #  5     0x12  5      OPC=pxor_xmm_xmm      
  vpor %xmm1, %xmm5, %xmm14          #  6     0x17  4      OPC=vpor_xmm_xmm_xmm  
  vmovq %xmm14, %rbx                 #  7     0x1b  5      OPC=vmovq_r64_xmm     
  xaddl %ebx, %r13d                  #  8     0x20  4      OPC=xaddl_r32_r32     
  retq                               #  9     0x24  1      OPC=retq              
                                                                                 
.size target, .-target
