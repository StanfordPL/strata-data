  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                     
.target:                           #        0     0      OPC=<label>                
  vzeroall                         #  1     0     3      OPC=vzeroall               
  vunpckhpd %ymm14, %ymm4, %ymm12  #  2     0x3   5      OPC=vunpckhpd_ymm_ymm_ymm  
  vcvttsd2sil %xmm12, %esi         #  3     0x8   5      OPC=vcvttsd2sil_r32_xmm    
  decq %rsi                        #  4     0xd   3      OPC=decq_r64               
  movq %rsi, %xmm11                #  5     0x10  5      OPC=movq_xmm_r64           
  vpmovsxwq %xmm11, %ymm1          #  6     0x15  5      OPC=vpmovsxwq_ymm_xmm      
  retq                             #  7     0x1a  1      OPC=retq                   
                                                                                    
.size target, .-target
