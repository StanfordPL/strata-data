  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP   Bytes  Opcode              
.target:                #        0     0      OPC=<label>         
  movapd %xmm1, %xmm13  #  1     0     5      OPC=movapd_xmm_xmm  
  movq $0x3, %rbx       #  2     0x5   10     OPC=movq_r64_imm64  
  movq %xmm13, %r14     #  3     0xf   5      OPC=movq_r64_xmm    
  bswap %r14d           #  4     0x14  3      OPC=bswap_r32       
  xaddb %bl, %r14b      #  5     0x17  4      OPC=xaddb_r8_r8     
  retq                  #  6     0x1b  1      OPC=retq            
                                                                  
.size target, .-target
