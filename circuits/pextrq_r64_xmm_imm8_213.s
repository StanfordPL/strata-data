  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    8 bytes

# Text                              #  Line  RIP   Bytes  Opcode                        
.target:                            #        0     0      OPC=<label>                   
  movaps %xmm1, %xmm3               #  1     0     3      OPC=movaps_xmm_xmm            
  vfnmadd231ss %xmm1, %xmm3, %xmm3  #  2     0x3   5      OPC=vfnmadd231ss_xmm_xmm_xmm  
  vpunpckhqdq %xmm3, %xmm3, %xmm1   #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm   
  vmovq %xmm1, %rbx                 #  4     0xc   5      OPC=vmovq_r64_xmm             
  retq                              #  5     0x11  1      OPC=retq                      
                                                                                        
.size target, .-target
