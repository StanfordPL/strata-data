  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                      
.target:                          #        0     0      OPC=<label>                 
  movq $0xfffffffffffffff9, %rbx  #  1     0     10     OPC=movq_r64_imm64          
  vandnpd %xmm1, %xmm1, %xmm5     #  2     0xa   4      OPC=vandnpd_xmm_xmm_xmm     
  movsd %xmm1, %xmm5              #  3     0xe   4      OPC=movsd_xmm_xmm           
  vpunpckhdq %xmm5, %xmm1, %xmm2  #  4     0x12  4      OPC=vpunpckhdq_xmm_xmm_xmm  
  movd %xmm2, %eax                #  5     0x16  4      OPC=movd_r32_xmm            
  xchgl %ebx, %eax                #  6     0x1a  1      OPC=xchgl_eax_r32           
  retq                            #  7     0x1b  1      OPC=retq                    
                                                                                    
.size target, .-target
