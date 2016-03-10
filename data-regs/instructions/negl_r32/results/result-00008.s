  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                    #  Line  RIP   Bytes  Opcode             
.target:                  #        0     0      OPC=<label>        
  vmovd %ebx, %xmm1       #  1     0     4      OPC=vmovd_xmm_r32  
  movq %xmm1, %rax        #  2     0x4   5      OPC=movq_r64_xmm   
  decl %eax               #  3     0x9   2      OPC=decl_r32       
  notl %eax               #  4     0xb   2      OPC=notl_r32       
  xaddl %ebx, %eax        #  5     0xd   3      OPC=xaddl_r32_r32  
  callq .set_szp_for_ebx  #  6     0x10  5      OPC=callq_label    
  retq                    #  7     0x15  1      OPC=retq           
                                                                   
.size target, .-target
