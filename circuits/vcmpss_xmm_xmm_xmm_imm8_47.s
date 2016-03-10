  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  movq $0xfffffffffffffffb, %rdx   #  1     0     10     OPC=movq_r64_imm64   
  vmovapd %xmm2, %xmm7             #  2     0xa   4      OPC=vmovapd_xmm_xmm  
  xorb %dl, %dh                    #  3     0xe   2      OPC=xorb_rh_r8       
  callq .move_064_032_rdx_r8d_r9d  #  4     0x10  5      OPC=callq_label      
  vmovd %r9d, %xmm1                #  5     0x15  5      OPC=vmovd_xmm_r32    
  orps %xmm7, %xmm1                #  6     0x1a  3      OPC=orps_xmm_xmm     
  retq                             #  7     0x1d  1      OPC=retq             
                                                                              
.size target, .-target
