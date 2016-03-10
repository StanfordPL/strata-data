  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                  
.target:                                          #        0     0      OPC=<label>             
  vmovd %ecx, %xmm2                               #  1     0     4      OPC=vmovd_xmm_r32       
  vminpd %ymm2, %ymm2, %ymm3                      #  2     0x4   4      OPC=vminpd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  movd %xmm8, %r13d                               #  4     0xd   5      OPC=movd_r32_xmm        
  cmovpol %r13d, %ebx                             #  5     0x12  4      OPC=cmovpol_r32_r32     
  retq                                            #  6     0x16  1      OPC=retq                
                                                                                                
.size target, .-target
