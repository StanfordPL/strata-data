  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  movsldup %xmm3, %xmm6                         #  1     0     4      OPC=movsldup_xmm_xmm       
  vunpckhpd %xmm6, %xmm2, %xmm0                 #  2     0x4   4      OPC=vunpckhpd_xmm_xmm_xmm  
  callq .move_128_032_xmm2_r10d_r11d_r12d_r13d  #  3     0x8   5      OPC=callq_label            
  xchgl %r13d, %r12d                            #  4     0xd   3      OPC=xchgl_r32_r32          
  callq .move_064_128_r12_r13_xmm1              #  5     0x10  5      OPC=callq_label            
  movsldup %xmm1, %xmm11                        #  6     0x15  5      OPC=movsldup_xmm_xmm       
  vmovsd %xmm11, %xmm0, %xmm1                   #  7     0x1a  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                          #  8     0x1f  1      OPC=retq                   
                                                                                                 
.size target, .-target
