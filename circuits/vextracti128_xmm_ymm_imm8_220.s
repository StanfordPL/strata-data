  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  vpor %ymm1, %ymm1, %ymm0            #  1     0     4      OPC=vpor_ymm_ymm_ymm    
  xorq %r8, %r8                       #  2     0x4   3      OPC=xorq_r64_r64        
  callq .move_r8b_to_byte_19_of_ymm1  #  3     0x7   5      OPC=callq_label         
  vmovupd %ymm1, %ymm4                #  4     0xc   4      OPC=vmovupd_ymm_ymm     
  vmovsd %xmm4, %xmm0, %xmm1          #  5     0x10  4      OPC=vmovsd_xmm_xmm_xmm  
  retq                                #  6     0x14  1      OPC=retq                
                                                                                    
.size target, .-target
