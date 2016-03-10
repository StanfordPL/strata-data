  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  pxor %xmm3, %xmm3           #  1     0     4      OPC=pxor_xmm_xmm        
  vsubpd %xmm3, %xmm1, %xmm4  #  2     0x4   4      OPC=vsubpd_xmm_xmm_xmm  
  vmovq %xmm4, %rbx           #  3     0x8   5      OPC=vmovq_r64_xmm       
  cmpw %bx, %bx               #  4     0xd   3      OPC=cmpw_r16_r16        
  cmovlel %ebx, %ebx          #  5     0x10  3      OPC=cmovlel_r32_r32     
  retq                        #  6     0x13  1      OPC=retq                
                                                                            
.size target, .-target
