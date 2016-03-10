  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  movq $0xfffffffffffffffc, %rbx  #  1     0     10     OPC=movq_r64_imm64      
  orb %bl, %bh                    #  2     0xa   2      OPC=orb_rh_r8           
  punpckhqdq %xmm1, %xmm1         #  3     0xc   4      OPC=punpckhqdq_xmm_xmm  
  movq %xmm1, %rdx                #  4     0x10  5      OPC=movq_r64_xmm        
  xaddl %ebx, %edx                #  5     0x15  3      OPC=xaddl_r32_r32       
  retq                            #  6     0x18  1      OPC=retq                
                                                                                
.size target, .-target
