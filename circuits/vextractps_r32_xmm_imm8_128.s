  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vpmovsxdq %xmm1, %xmm5          #  1     0     5      OPC=vpmovsxdq_xmm_xmm   
  movq $0xfffffffffffffff0, %rbx  #  2     0x5   10     OPC=movq_r64_imm64      
  vmaxps %xmm5, %xmm1, %xmm15     #  3     0xf   4      OPC=vmaxps_xmm_xmm_xmm  
  movd %xmm15, %ecx               #  4     0x13  5      OPC=movd_r32_xmm        
  xchgl %ecx, %ebx                #  5     0x18  2      OPC=xchgl_r32_r32       
  retq                            #  6     0x1a  1      OPC=retq                
                                                                                
.size target, .-target
