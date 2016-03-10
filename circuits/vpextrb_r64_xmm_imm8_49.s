  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                    #  Line  RIP   Bytes  Opcode                
.target:                  #        0     0      OPC=<label>           
  movq $0x80, %rbx        #  1     0     10     OPC=movq_r64_imm64    
  pmovsxdq %xmm1, %xmm15  #  2     0xa   6      OPC=pmovsxdq_xmm_xmm  
  vmovd %xmm15, %eax      #  3     0x10  4      OPC=vmovd_r32_xmm     
  cmpxchgb %bh, %ah       #  4     0x14  3      OPC=cmpxchgb_rh_rh    
  movb %al, %bl           #  5     0x17  2      OPC=movb_r8_r8        
  retq                    #  6     0x19  1      OPC=retq              
                                                                      
.size target, .-target
