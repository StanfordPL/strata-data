  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                                #  Line  RIP   Bytes  Opcode                        
.target:                              #        0     0      OPC=<label>                   
  vpxor %xmm7, %xmm7, %xmm11          #  1     0     4      OPC=vpxor_xmm_xmm_xmm         
  vmovdqu %ymm11, %ymm10              #  2     0x4   5      OPC=vmovdqu_ymm_ymm           
  vmovd %eax, %xmm1                   #  3     0x9   4      OPC=vmovd_xmm_r32             
  shll $0x1, %eax                     #  4     0xd   2      OPC=shll_r32_one              
  movq %xmm10, %rbp                   #  5     0xf   5      OPC=movq_r64_xmm              
  notl %ebp                           #  6     0x14  2      OPC=notl_r32                  
  vfnmsub213pd %ymm11, %ymm1, %ymm10  #  7     0x16  5      OPC=vfnmsub213pd_ymm_ymm_ymm  
  vcvttss2sil %xmm10, %edx            #  8     0x1b  5      OPC=vcvttss2sil_r32_xmm       
  cmovcl %ebp, %edx                   #  9     0x20  3      OPC=cmovcl_r32_r32            
  retq                                #  10    0x23  1      OPC=retq                      
                                                                                          
.size target, .-target
