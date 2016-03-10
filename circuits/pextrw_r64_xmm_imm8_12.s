  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP   Bytes  Opcode                  
.target:                   #        0     0      OPC=<label>             
  movq $0x4, %rbx          #  1     0     10     OPC=movq_r64_imm64      
  andl %ebx, %ebx          #  2     0xa   2      OPC=andl_r32_r32        
  punpckhqdq %xmm1, %xmm1  #  3     0xc   4      OPC=punpckhqdq_xmm_xmm  
  vmovd %xmm1, %esp        #  4     0x10  4      OPC=vmovd_r32_xmm       
  movzbl %spl, %esi        #  5     0x14  4      OPC=movzbl_r32_r8       
  cmovcl %esi, %esp        #  6     0x18  3      OPC=cmovcl_r32_r32      
  cmovnlw %sp, %bx         #  7     0x1b  4      OPC=cmovnlw_r16_r16     
  retq                     #  8     0x1f  1      OPC=retq                
                                                                         
.size target, .-target
